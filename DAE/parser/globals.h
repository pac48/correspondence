//
// Created by paulg on 2/10/2022.
//
#include "struct_types.h"
#include "unordered_map"

using namespace std;

#ifndef LOADDAE_GLOBALS_H
#define LOADDAE_GLOBALS_H


template<typename T>
vector<T> objects;

template<typename T>
unordered_map<string, T*> idMap;

enum Cases{
    CONTROLLER,
    GEOMETRY,
    SOURCE,
    MESH,
    FLOATARRAY,
    VERTICES,
    TRIANGLES,
    NAMEARRAY,
    TECHNIQUECOMMON,
    INPUT,
    PRIMITIVE,
    NODE,
    CAMERA,
    LIGHT,
    INSTANCELIGHT,
    INSTANCECAMERA,
    INSTANCECONTROLLER,
    EXTRA,
    SKIN,
    BINDSHAPEMATRIX,
    JOINTS,
    VERTEXWEIGHTS,
    VCOUNT,
    INFLUENCES,
    NONE
};

unordered_map<string, Cases> caseMap = {
        {"controller", CONTROLLER},
        {"geometry", GEOMETRY},
        {"float_array", FLOATARRAY},
        {"mesh", MESH},
        {"source", SOURCE},
        {"vertices", VERTICES},
        {"triangles", TRIANGLES},
        {"Name_array", NAMEARRAY},
        {"technique_common", TECHNIQUECOMMON},
        {"p",PRIMITIVE},
        {"input", INPUT},
        {"node",NODE},
        {"camera",CAMERA},
        {"light", LIGHT},
        {"instance_light",INSTANCELIGHT},
        {"instance_camera",INSTANCECAMERA},
        {"instance_controller", INSTANCECONTROLLER},
        {"skin",SKIN},
        {"extra",EXTRA},
        {"joints", JOINTS},
        {"bind_shape_matrix",BINDSHAPEMATRIX},
         {"vertex_weights", VERTEXWEIGHTS},
         {"vcount",VCOUNT},
         {"v", INFLUENCES}
};

#endif //LOADDAE_GLOBALS_H
