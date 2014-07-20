/*
 * "gralloc" (not in Android terms) to add missing functions to raspberry pi userland driver.
 *
 * Copyright (C) 2013 Andreas Harter - RazDroid project
 *
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "gralloc_brcm_def.h"
#include "gralloc_brcm.h"
#include "gralloc_priv.h"
#include <system/window.h>

EGL_DISPMANX_WINDOW_T* gralloc_private_handle_from_native_window(EGLNativeWindowType window)
{
    ALOGD("%s:%d window=%p",__FUNCTION__,__LINE__,window);
    EGL_DISPMANX_WINDOW_T *win = (EGL_DISPMANX_WINDOW_T*) malloc(sizeof(EGL_DISPMANX_WINDOW_T));

    ANativeWindow* native_window = (ANativeWindow*) window;

    native_window->query(native_window, NATIVE_WINDOW_HEIGHT, &(win->height));
    native_window->query(native_window, NATIVE_WINDOW_WIDTH, &(win->width));

    ALOGD("gralloc_private_handle_from_native_window w: %d, h %d", win->width, win->height);
    return win;
}

gralloc_private_handle_t* gralloc_private_handle_from_client_buffer(EGLClientBuffer buffer)
{
    ALOGD("%s:%d buffer=%p",__FUNCTION__,__LINE__,buffer);
    ANativeWindowBuffer* native_buffer = (ANativeWindowBuffer*) buffer;

    private_handle_t* private_handle = (private_handle_t*) native_buffer->handle;
    return private_handle->brcm_handle;
}

uint32_t gralloc_private_handle_get_res_type(gralloc_private_handle_t* private_handle)
{	
    ALOGD("%s:%d private_handle=%p",__FUNCTION__,__LINE__,private_handle);
    return private_handle->res_type;
}

uint32_t gralloc_private_handle_get_vc_handle(gralloc_private_handle_t *private_handle)
{
    ALOGD("%s:%d private_handle=%p",__FUNCTION__,__LINE__,private_handle);
    return (uint32_t) private_handle->dispman_resource;
}

uint32_t gralloc_private_handle_get_egl_image(gralloc_private_handle_t *private_handle)
{
    //GRALLOC_PRIV_TYPE_GL_RESOURCE or GRALLOC_PRIV_TYPE_MM_RESOURCE
    ALOGD("%s:%d private_handle=%p",__FUNCTION__,__LINE__,private_handle);
    return (uint32_t) private_handle->egl_image;
}

void gralloc_set_egl_image(gralloc_private_handle_t *private_handle, EGLImageKHR image)
{
    ALOGD("%s:%d private_handle=%p image=%p",__FUNCTION__,__LINE__,private_handle,image);
    private_handle->res_type = GRALLOC_PRIV_TYPE_GL_RESOURCE;
    private_handle->egl_image = image;
}
