#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    lineage_montana:$(LOCAL_DIR)/montana/lineage_montana.mk \
    lineage_montana_car:$(LOCAL_DIR)/montana/lineage_montana_car.mk \
    lineage_montana_tv:$(LOCAL_DIR)/montana/lineage_montana_tv.mk \

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += lineage_montana-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_montana_car-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_montana_tv-$(build_type)))
