.class public final Lyads/l54;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k96;


# direct methods
.method public constructor <init>(Lyads/k96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l54;->a:Lyads/k96;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/l54;->a:Lyads/k96;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/k96;->a(Ljava/lang/String;)Lyads/j96;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lyads/l54;->a:Lyads/k96;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/k96;->a(Ljava/lang/String;)Lyads/j96;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p0}, Lyads/j96;->a(Lyads/j96;)I

    move-result p0

    if-ltz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v0
.end method
