package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvAdvancePromoSelectCardBinding implements ViewBinding {
    public final TextView btnIssueCard;
    public final Group groupCategories;
    public final Group groupConditions;
    public final Guideline headersGuideline;
    public final ImageView ivBadge;
    public final ImageView ivCategoriesInfo;
    public final ImageView ivHeaderImage;
    public final ImageView ivPskInfo;
    public final ImageView ivStep1;
    public final ImageView ivStep2;
    public final LinearLayout llBadge;
    public final LinearLayout llPskContainer;
    public final LinearLayout llStepsContainer;
    public final MaterialCardView mainCard;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCategories;
    public final TextView tvBadge;
    public final TextView tvBankName;
    public final TextView tvCardType;
    public final TextView tvCategoriesTitle;
    public final TextView tvFirstLabel;
    public final TextView tvFirstValue;
    public final TextView tvFooterDisclaimer;
    public final TextView tvPskRate;
    public final TextView tvSecondLabel;
    public final TextView tvSecondValue;
    public final TextView tvStep1Badge;
    public final TextView tvStep1Text;
    public final TextView tvStep2Badge;
    public final TextView tvStep2Text;
    public final TextView tvStepsTitle;

    private ItemRvAdvancePromoSelectCardBinding(ConstraintLayout constraintLayout, TextView textView, Group group, Group group2, Guideline guideline, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, MaterialCardView materialCardView, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, TextView textView16) {
        this.rootView = constraintLayout;
        this.btnIssueCard = textView;
        this.groupCategories = group;
        this.groupConditions = group2;
        this.headersGuideline = guideline;
        this.ivBadge = imageView;
        this.ivCategoriesInfo = imageView2;
        this.ivHeaderImage = imageView3;
        this.ivPskInfo = imageView4;
        this.ivStep1 = imageView5;
        this.ivStep2 = imageView6;
        this.llBadge = linearLayout;
        this.llPskContainer = linearLayout2;
        this.llStepsContainer = linearLayout3;
        this.mainCard = materialCardView;
        this.rvCategories = recyclerView;
        this.tvBadge = textView2;
        this.tvBankName = textView3;
        this.tvCardType = textView4;
        this.tvCategoriesTitle = textView5;
        this.tvFirstLabel = textView6;
        this.tvFirstValue = textView7;
        this.tvFooterDisclaimer = textView8;
        this.tvPskRate = textView9;
        this.tvSecondLabel = textView10;
        this.tvSecondValue = textView11;
        this.tvStep1Badge = textView12;
        this.tvStep1Text = textView13;
        this.tvStep2Badge = textView14;
        this.tvStep2Text = textView15;
        this.tvStepsTitle = textView16;
    }

    public static ItemRvAdvancePromoSelectCardBinding bind(View view) {
        int i = R.id.btn_issue_card;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_issue_card);
        if (textView != null) {
            i = R.id.group_categories;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_categories);
            if (group != null) {
                i = R.id.group_conditions;
                Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_conditions);
                if (group2 != null) {
                    i = R.id.headers_guideline;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.headers_guideline);
                    if (guideline != null) {
                        i = R.id.iv_badge;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                        if (imageView != null) {
                            i = R.id.iv_categories_info;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_categories_info);
                            if (imageView2 != null) {
                                i = R.id.iv_header_image;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_header_image);
                                if (imageView3 != null) {
                                    i = R.id.iv_psk_info;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_psk_info);
                                    if (imageView4 != null) {
                                        i = R.id.iv_step_1;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_step_1);
                                        if (imageView5 != null) {
                                            i = R.id.iv_step_2;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_step_2);
                                            if (imageView6 != null) {
                                                i = R.id.ll_badge;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_badge);
                                                if (linearLayout != null) {
                                                    i = R.id.ll_psk_container;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_psk_container);
                                                    if (linearLayout2 != null) {
                                                        i = R.id.ll_steps_container;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_steps_container);
                                                        if (linearLayout3 != null) {
                                                            i = R.id.main_card;
                                                            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.main_card);
                                                            if (materialCardView != null) {
                                                                i = R.id.rv_categories;
                                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_categories);
                                                                if (recyclerView != null) {
                                                                    i = R.id.tv_badge;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge);
                                                                    if (textView2 != null) {
                                                                        i = R.id.tv_bank_name;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_name);
                                                                        if (textView3 != null) {
                                                                            i = R.id.tv_card_type;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_type);
                                                                            if (textView4 != null) {
                                                                                i = R.id.tv_categories_title;
                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_categories_title);
                                                                                if (textView5 != null) {
                                                                                    i = R.id.tv_first_label;
                                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_first_label);
                                                                                    if (textView6 != null) {
                                                                                        i = R.id.tv_first_value;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_first_value);
                                                                                        if (textView7 != null) {
                                                                                            i = R.id.tv_footer_disclaimer;
                                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_footer_disclaimer);
                                                                                            if (textView8 != null) {
                                                                                                i = R.id.tv_psk_rate;
                                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_psk_rate);
                                                                                                if (textView9 != null) {
                                                                                                    i = R.id.tv_second_label;
                                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_second_label);
                                                                                                    if (textView10 != null) {
                                                                                                        i = R.id.tv_second_value;
                                                                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_second_value);
                                                                                                        if (textView11 != null) {
                                                                                                            i = R.id.tv_step_1_badge;
                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_step_1_badge);
                                                                                                            if (textView12 != null) {
                                                                                                                i = R.id.tv_step_1_text;
                                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_step_1_text);
                                                                                                                if (textView13 != null) {
                                                                                                                    i = R.id.tv_step_2_badge;
                                                                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_step_2_badge);
                                                                                                                    if (textView14 != null) {
                                                                                                                        i = R.id.tv_step_2_text;
                                                                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_step_2_text);
                                                                                                                        if (textView15 != null) {
                                                                                                                            i = R.id.tv_steps_title;
                                                                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_steps_title);
                                                                                                                            if (textView16 != null) {
                                                                                                                                return new ItemRvAdvancePromoSelectCardBinding((ConstraintLayout) view, textView, group, group2, guideline, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, linearLayout2, linearLayout3, materialCardView, recyclerView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16);
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvAdvancePromoSelectCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_advance_promo_select_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvAdvancePromoSelectCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
