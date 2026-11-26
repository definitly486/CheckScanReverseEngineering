.class public final Lyads/q66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p1, p0, Lyads/q66;->b:Ljava/lang/String;

    iput-wide p2, p0, Lyads/q66;->c:D

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lyads/q66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/q66;->b(D)V

    return-void
.end method

.method public final b(D)V
    .locals 2

    iget-wide v0, p0, Lyads/q66;->c:D

    cmpg-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lyads/q66;->c:D

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lyads/q66;->c:D

    return-wide v0
.end method
