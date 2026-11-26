.class public final Lfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs;->a:Lb99;

    iput-object p2, p0, Lfs;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 7

    iget-object p1, p0, Lfs;->a:Lb99;

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lx48;

    iget-object p0, p0, Lfs;->b:Lzz5;

    iget-object v1, p0, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lvp3;->g(Ljava/io/InputStream;)Lt54;

    move-result-object v1

    new-instance v2, Liy6;

    invoke-direct {v2, v1}, Liy6;-><init>(Lv48;)V

    iget-object p0, p0, Lzz5;->f:Lw93;

    new-instance v1, Lds;

    invoke-direct {v1, p1}, Lds;-><init>(Ljava/lang/String;)V

    new-instance v3, La58;

    invoke-direct {v3, v2, p0, v1}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x23

    invoke-static {p1, p0}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-static {p0, p1}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    invoke-static {p1, p0, p0}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    const-string v2, ""

    invoke-static {p1, p0, v2}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Leb5;->a:Luz4;

    invoke-virtual {p1, p0}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    sget-object p0, Lz82;->DISK:Lz82;

    invoke-direct {v0, v3, v1, p0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v0
.end method
