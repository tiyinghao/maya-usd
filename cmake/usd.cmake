#
# =======================================================================
# Copyright 2019 Autodesk, Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =======================================================================
#


function(init_usd)
    set(PXR_USD_LOCATION "${PXR_USD_LOCATION}" PARENT_SCOPE)
    set(PXR_USD_INCLUDE_DIR "${PXR_USD_LOCATION}/include" PARENT_SCOPE)
    set(PXR_USD_LIB_DIR "${PXR_USD_LOCATION}/lib" PARENT_SCOPE)

    # Adjust PYTHONPATH, PATH
    append_path_to_env_var("PYTHONPATH" "${PXR_USD_LOCATION}/lib/python")
    if(WIN32)
        append_path_to_env_var("PATH" "${PXR_USD_LOCATION}/bin;${PXR_USD_LOCATION}/lib")
    endif()
endfunction()

init_usd()
