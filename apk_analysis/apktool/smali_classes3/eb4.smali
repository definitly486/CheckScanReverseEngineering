.class public final Leb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb4$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb4;->a:Lb99;

    iput-object p2, p0, Leb4;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 7

    iget-object p1, p0, Leb4;->a:Lb99;

    iget-object v0, p1, Lb99;->e:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/16 v2, 0x21

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    sget-object p1, Lj46;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object v0

    new-instance v2, Lx48;

    iget-object p0, p0, Leb4;->b:Lzz5;

    iget-object p0, p0, Lzz5;->f:Lw93;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxr2;

    invoke-direct {v4, v3}, Lxr2;-><init>(I)V

    invoke-static {p1, p0, v4}, Lmm9;->c(Lj46;Lw93;Lnl3;)Lhm9;

    move-result-object p0

    const/16 p1, 0x1c

    invoke-static {v0, p0, v5, v5, p1}, Li24;->a(Lj46;Lw93;Ljava/lang/String;Lqn2$c;I)Ln93;

    move-result-object p0

    invoke-virtual {v0}, Lj46;->c()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {v0, p1, v1}, Lta8;->b0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Leb5;->a:Luz4;

    invoke-virtual {v0, p1}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_0
    sget-object p1, Lz82;->DISK:Lz82;

    invoke-direct {v2, p0, v5, p1}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v2

    :cond_3
    const-string p0, "Invalid jar:file URI: "

    invoke-static {p1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method
