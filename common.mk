include ../tools/variables.mk
include ../tools/rules.mk

JRL_MATHTOOLS=$(shell rospack find jrl-mathtools)/$(PKGCONFIGDIR)
JRL_MAL=$(shell rospack find jrl-mal)/$(PKGCONFIGDIR)
ABSTRACT_ROBOT_DYNAMICS=\
 $(shell rospack find abstract-robot-dynamics)/$(PKGCONFIGDIR)
JRL_DYNAMICS=$(shell rospack find jrl-dynamics)/$(PKGCONFIGDIR)

ABSTRACT_GIK_TASK=$(shell rospack find abstract-gik-task)/$(PKGCONFIGDIR)
HPP_GIK=$(shell rospack find hpp-gik)/$(PKGCONFIGDIR)

PKG_CONFIG_PATH=$(JRL_MATHTOOLS):$(JRL_MAL):$(ABSTRACT_ROBOT_DYNAMICS):$(JRL_DYNAMICS):$(ABSTRACT_GIK_TASK):$(HPP_GIK)

RPATHS=$(shell rospack find jrl-mathtools)/$(LIBDIR):$(shell rospack find jrl-mal)/$(LIBDIR):$(shell rospack find abstract-robot-dynamics)/$(LIBDIR):$(shell rospack find jrl-dynamics)/$(LIBDIR):$(shell rospack find abstract-gik-task)/$(LIBDIR):$(shell rospack find hpp-gik)/$(LIBDIR)
