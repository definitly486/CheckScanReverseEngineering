.class public final Ljy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy1$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy1;->a:Lb99;

    iput-object p2, p0, Ljy1;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 8

    iget-object p1, p0, Ljy1;->a:Lb99;

    iget-object v0, p1, Lb99;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Ljy1;->b:Lzz5;

    iget-object v1, p0, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lb99;->d:Ljava/lang/String;

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "r"

    const-string v6, "\'."

    if-eqz v3, :cond_1

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "display_photo"

    invoke-static {v3, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p0, "Unable to find a contact photo associated with \'"

    invoke-static {v0, p0, v6}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v3, v7, :cond_7

    const-string v3, "media"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_7

    add-int/lit8 v3, v2, -0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "audio"

    invoke-static {v3, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, -0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "albums"

    invoke-static {p1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lzz5;->b:Lt18;

    iget-object v2, p1, Lt18;->a:Lhn2;

    instance-of v3, v2, Lhn2$a;

    if-eqz v3, :cond_3

    check-cast v2, Lhn2$a;

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_5

    iget v2, v2, Lhn2$a;->a:I

    iget-object p1, p1, Lt18;->b:Lhn2;

    instance-of v3, p1, Lhn2$a;

    if-eqz v3, :cond_4

    check-cast p1, Lhn2$a;

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_5

    iget p1, p1, Lhn2$a;->a:I

    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    const-string p1, "android.content.extra.SIZE"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    const-string p1, "image/*"

    invoke-virtual {v1, v0, p1, v3, v4}, Landroid/content/ContentResolver;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const-string p0, "Unable to find a music thumbnail associated with \'"

    invoke-static {v0, p0, v6}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :cond_7
    :goto_3
    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_8

    :goto_4
    new-instance v2, Lx48;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Lvp3;->g(Ljava/io/InputStream;)Lt54;

    move-result-object v3

    new-instance v4, Liy6;

    invoke-direct {v4, v3}, Liy6;-><init>(Lv48;)V

    iget-object p0, p0, Lzz5;->f:Lw93;

    new-instance v3, Lcy1;

    invoke-direct {v3, p1}, Lcy1;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    new-instance p1, La58;

    invoke-direct {p1, v4, p0, v3}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lz82;->DISK:Lz82;

    invoke-direct {v2, p1, p0, v0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v2

    :cond_8
    const-string p0, "Unable to open \'"

    invoke-static {v0, p0, v6}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4
.end method
