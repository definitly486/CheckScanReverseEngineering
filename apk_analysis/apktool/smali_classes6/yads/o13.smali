.class public final Lyads/o13;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/xo2;

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/u13;-><init>()V

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Lyads/o13;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->e:Lyads/xo2;

    iput-object v0, p0, Lyads/o13;->b:Lyads/xo2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/o13;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/o13;->a:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "stub"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/o13;->b:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/o13;->c:Z

    return p0
.end method
