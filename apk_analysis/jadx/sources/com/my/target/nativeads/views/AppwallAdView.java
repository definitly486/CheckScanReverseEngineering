package com.my.target.nativeads.views;

import android.R;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import defpackage.bi5;
import defpackage.ci5;
import defpackage.rk3;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class AppwallAdView extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, AbsListView.OnScrollListener {
    public final ListView b;
    public final HashMap c;

    public static class AppwallCardPlaceholder extends FrameLayout {
        public final AppwallAdTeaserView b;

        public AppwallCardPlaceholder(AppwallAdTeaserView appwallAdTeaserView, Context context) {
            super(context);
            this.b = appwallAdTeaserView;
            int iB = (int) rk3.b(context, 1, 9.0f);
            int iB2 = (int) rk3.b(context, 1, 4.0f);
            int iB3 = (int) rk3.b(context, 1, 2.0f);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundColor(-1118482);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(iB, iB2, iB, iB2);
            appwallAdTeaserView.setLayoutParams(layoutParams);
            linearLayout.addView(appwallAdTeaserView);
            appwallAdTeaserView.setElevation(iB3);
            GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
            GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{-1, -1});
            GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{-1118482, -1118482});
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
            stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
            appwallAdTeaserView.setBackground(stateListDrawable);
            addView(linearLayout, -2, -2);
        }

        public AppwallAdTeaserView getView() {
            return this.b;
        }
    }

    public interface a {
    }

    public static class b extends ArrayAdapter<ci5> {
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            ci5 item = getItem(i);
            if (view == null) {
                view = new AppwallCardPlaceholder(new AppwallAdTeaserView(getContext()), getContext());
            }
            if (item != null) {
                ((AppwallCardPlaceholder) view).getView().setNativeAppwallBanner(item);
            }
            return view;
        }
    }

    public AppwallAdView(Context context) {
        super(context);
        this.c = new HashMap();
        setVerticalFadingEdgeEnabled(false);
        setBackgroundColor(-1);
        ListView listView = new ListView(context);
        this.b = listView;
        int iB = (int) rk3.b(context, 1, 4.0f);
        int iB2 = (int) rk3.b(context, 1, 4.0f);
        listView.setDividerHeight(0);
        listView.setVerticalFadingEdgeEnabled(false);
        listView.setOnItemClickListener(this);
        listView.setOnScrollListener(this);
        listView.setPadding(0, iB, 0, iB2);
        listView.setClipToPadding(false);
        addView(listView, -1, -1);
        listView.setBackgroundColor(-1118482);
    }

    public final void a() {
        ListView listView = this.b;
        if (listView.getAdapter() == null) {
            return;
        }
        int lastVisiblePosition = listView.getLastVisiblePosition();
        ArrayList arrayList = new ArrayList();
        for (int firstVisiblePosition = listView.getFirstVisiblePosition(); firstVisiblePosition <= lastVisiblePosition; firstVisiblePosition++) {
            ci5 ci5Var = (ci5) listView.getAdapter().getItem(firstVisiblePosition);
            HashMap map = this.c;
            if (map.get(ci5Var) == null) {
                arrayList.add(ci5Var);
                map.put(ci5Var, Boolean.TRUE);
            }
        }
        arrayList.size();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        a();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        a();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void setAppwallAdViewListener(a aVar) {
    }

    public void setupView(bi5 bi5Var) {
        getContext();
        throw null;
    }
}
