.class public final Lyads/j55;
.super Lyads/os;
.source "SourceFile"


# instance fields
.field public final b:Lg17;


# direct methods
.method public constructor <init>(Lg17;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/os;-><init>(Z)V

    iput-object p1, p0, Lyads/j55;->b:Lg17;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lyads/os;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/j55;->b:Lg17;

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
