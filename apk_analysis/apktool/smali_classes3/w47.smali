.class public final Lw47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw47$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw47;->a:Lb99;

    iput-object p2, p0, Lw47;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 12

    iget-object p1, p0, Lw47;->a:Lb99;

    iget-object v0, p1, Lb99;->d:Ljava/lang/String;

    const-string v1, "Invalid android.resource URI: "

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_10

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_f

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lw47;->b:Lzz5;

    iget-object v1, p0, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    :goto_1
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_2
    const/16 v6, 0x23

    invoke-static {v4, v6}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3f

    invoke-static {v4, v6}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-static {v6, v4, v4}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2e

    const-string v7, ""

    invoke-static {v6, v4, v7}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Leb5;->a:Luz4;

    invoke-virtual {v6, v4}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    :goto_3
    const-string v4, "text/xml"

    invoke-static {v6, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Invalid resource ID: "

    if-eqz v0, :cond_6

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_4
    move-object v6, v0

    goto :goto_6

    :cond_5
    invoke-static {p1, v4}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-object v2

    :cond_6
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    :goto_5
    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-eq v6, v5, :cond_7

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_5

    :cond_7
    if-ne v6, v7, :cond_d

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v3, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_4

    :goto_6
    sget-object p1, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    instance-of p1, v6, Landroid/graphics/drawable/VectorDrawable;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    instance-of p1, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move p1, v0

    goto :goto_8

    :cond_9
    :goto_7
    move p1, v5

    :goto_8
    new-instance v2, Lk14;

    if-eqz p1, :cond_b

    sget-object v3, Lf24;->b:Lb53$b;

    invoke-static {p0, v3}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/graphics/Bitmap$Config;

    iget-object v8, p0, Lzz5;->b:Lt18;

    iget-object v9, p0, Lzz5;->c:Lmd7;

    sget-object v3, Ld24;->b:Lb53$b;

    invoke-static {p0, v3}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lt18;

    iget-object p0, p0, Lzz5;->d:Lre6;

    sget-object v3, Lre6;->INEXACT:Lre6;

    if-ne p0, v3, :cond_a

    move v11, v5

    goto :goto_9

    :cond_a
    move v11, v0

    :goto_9
    invoke-static/range {v6 .. v11}, Lss2;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lt18;Lmd7;Lt18;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_b
    invoke-static {v6}, Ln24;->b(Landroid/graphics/drawable/Drawable;)Lx04;

    move-result-object p0

    sget-object v0, Lz82;->DISK:Lz82;

    invoke-direct {v2, p0, p1, v0}, Lk14;-><init>(Lx04;ZLz82;)V

    return-object v2

    :cond_c
    invoke-static {p1, v4}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-object v2

    :cond_d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lx48;

    invoke-static {v1}, Lvp3;->g(Ljava/io/InputStream;)Lt54;

    move-result-object v1

    new-instance v3, Liy6;

    invoke-direct {v3, v1}, Liy6;-><init>(Lv48;)V

    iget-object p0, p0, Lzz5;->f:Lw93;

    new-instance v1, Lr47;

    invoke-direct {v1, v0, p1}, Lr47;-><init>(Ljava/lang/String;I)V

    new-instance p1, La58;

    invoke-direct {p1, v3, p0, v1}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    sget-object p0, Lz82;->DISK:Lz82;

    invoke-direct {v2, p1, v6, p0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v2

    :cond_f
    invoke-static {p1, v1}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_10
    invoke-static {p1, v1}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
