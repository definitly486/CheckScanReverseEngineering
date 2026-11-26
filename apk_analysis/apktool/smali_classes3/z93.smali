.class public final Lz93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz93$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz93;->a:Lb99;

    iput-object p2, p0, Lz93;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Lj46;->c:Ljava/lang/String;

    iget-object p1, p0, Lz93;->a:Lb99;

    invoke-static {p1}, Lxz2;->c(Lb99;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object p1

    new-instance v1, Lx48;

    iget-object p0, p0, Lz93;->b:Lzz5;

    iget-object p0, p0, Lzz5;->f:Lw93;

    const/16 v2, 0x1c

    invoke-static {p1, p0, v0, v0, v2}, Li24;->a(Lj46;Lw93;Ljava/lang/String;Lqn2$c;I)Ln93;

    move-result-object p0

    invoke-virtual {p1}, Lj46;->c()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    const-string v3, ""

    invoke-static {v2, p1, v3}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Leb5;->a:Luz4;

    invoke-virtual {v0, p1}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    sget-object p1, Lz82;->DISK:Lz82;

    invoke-direct {v1, p0, v0, p1}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v1

    :cond_2
    const-string p0, "filePath == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0
.end method
