package com.warefly.checkscan.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public class SearchBar extends FrameLayout {
    public SearchView b;
    public c c;

    public class a implements View.OnClickListener {
        public final /* synthetic */ EditText b;
        public final /* synthetic */ ImageView c;

        public a(EditText editText, ImageView imageView) {
            this.b = editText;
            this.c = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.b.setText("");
            SearchBar.this.b.setQuery("", false);
            this.c.setVisibility(8);
        }
    }

    public class b implements SearchView.OnQueryTextListener {
        public final /* synthetic */ ImageView a;

        public b(ImageView imageView) {
            this.a = imageView;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            SearchBar.this.c.a();
            if (str.length() <= 0) {
                return true;
            }
            this.a.setVisibility(0);
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            SearchBar searchBar = SearchBar.this;
            searchBar.b.clearFocus();
            searchBar.c.getClass();
            return true;
        }
    }

    public interface c {
        void a();
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public final void a() {
        SearchView searchView = (SearchView) View.inflate(getContext(), R.layout.search_bar_view, this).findViewById(R.id.search_view);
        this.b = searchView;
        searchView.setActivated(true);
        this.b.setIconifiedByDefault(false);
        this.b.clearFocus();
        ImageView imageView = (ImageView) this.b.findViewById(androidx.appcompat.R.id.search_close_btn);
        EditText editText = (EditText) this.b.findViewById(androidx.appcompat.R.id.search_src_text);
        editText.setTextColor(ContextCompat.getColor(getContext(), R.color.blueCharcoal));
        editText.setHintTextColor(ContextCompat.getColor(getContext(), R.color.manatee));
        imageView.setOnClickListener(new a(editText, imageView));
    }

    public CharSequence getQuerySequence() {
        return this.b.getQuery();
    }

    public void setOnQueryTextChangedListener(c cVar) {
        this.c = cVar;
        SearchView searchView = this.b;
        if (cVar == null) {
            searchView.setOnQueryTextListener(null);
        } else {
            this.b.setOnQueryTextListener(new b((ImageView) searchView.findViewById(androidx.appcompat.R.id.search_close_btn)));
        }
    }

    public void setQueryHint(String str) {
        this.b.setQueryHint(str);
    }

    public void setQuerySequence(CharSequence charSequence, boolean z) {
        this.b.setQuery(charSequence, z);
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public SearchBar(Context context) {
        super(context);
        a();
    }
}
