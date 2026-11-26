.class public final Lyads/nv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ac1;

.field public final b:Lyads/ac1;


# direct methods
.method public constructor <init>(Lyads/ac1;Lyads/ac1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nv1;->a:Lyads/ac1;

    iput-object p2, p0, Lyads/nv1;->b:Lyads/ac1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/nv1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/nv1;->a:Lyads/ac1;

    iget-object v2, p1, Lyads/nv1;->a:Lyads/ac1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/ac1;->a(Lyads/ac1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lyads/nv1;->b:Lyads/ac1;

    iget-object p1, p1, Lyads/nv1;->b:Lyads/ac1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ac1;->a(Lyads/ac1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
