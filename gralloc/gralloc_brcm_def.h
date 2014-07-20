/*
 * Copyright (C) 2013 Andreas Harter
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

#ifndef GRALLOC_BRCM_DEF_H_
#define GRALLOC_BRCM_DEF_H_

#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <EGL/eglplatform.h>

static const int GRALLOC_PRIV_TYPE_MM_RESOURCE = 0;
static const int GRALLOC_PRIV_TYPE_GL_RESOURCE = 1;

static const int GRALLOC_MAGICS_HAL_PIXEL_FORMAT_OPAQUE = 0;

typedef struct gralloc_private_handle_t {

    EGLImageKHR egl_image;
    DISPMANX_DISPLAY_HANDLE_T dispman_display;
    DISPMANX_RESOURCE_HANDLE_T dispman_resource;
    EGL_DISPMANX_WINDOW_T window;
    //GRALLOC_PRIV_TYPE_GL_RESOURCE or GRALLOC_PRIV_TYPE_MM_RESOURCE
    int res_type;
    int gl_format;
    int stride;
    int pixelformat;

} gralloc_private_handle_t;

#endif /* GRALLOC_BRCM_DEF_H_ */
