.class public final Lyads/c40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyads/vn2;

.field public b:Lyads/ed;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/ed;Lyads/vn2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/c40;->a:Lyads/vn2;

    iput-object p1, p0, Lyads/c40;->b:Lyads/ed;

    const-string p1, "medium"

    const-string p2, "large"

    const-string v0, "small"

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/c40;->c:Ljava/util/List;

    return-void
.end method
