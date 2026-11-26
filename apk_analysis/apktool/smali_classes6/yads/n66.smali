.class public final Lyads/n66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p1, p0, Lyads/n66;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lyads/n66;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lyads/n66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/n66;->b(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Lyads/n66;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lyads/n66;->c:Z

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lyads/n66;->c:Z

    return p0
.end method
