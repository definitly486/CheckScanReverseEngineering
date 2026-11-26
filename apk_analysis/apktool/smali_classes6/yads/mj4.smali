.class public final Lyads/mj4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Lyads/b05;

.field public c:Lyads/ee4;

.field public d:Lyads/t5;

.field public e:Lyads/s5;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyads/pj4;

.field public h:I


# direct methods
.method public constructor <init>(Lyads/pj4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/mj4;->g:Lyads/pj4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/mj4;->f:Ljava/lang/Object;

    iget p1, p0, Lyads/mj4;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/mj4;->h:I

    iget-object p1, p0, Lyads/mj4;->g:Lyads/pj4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lyads/pj4;->a(Ljava/util/Set;Lyads/b05;Lyads/ee4;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
