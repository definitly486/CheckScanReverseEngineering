.class public final Lyads/aq;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/bq;

.field public e:I


# direct methods
.method public constructor <init>(Lyads/bq;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/aq;->d:Lyads/bq;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/aq;->c:Ljava/lang/Object;

    iget p1, p0, Lyads/aq;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/aq;->e:I

    iget-object p1, p0, Lyads/aq;->d:Lyads/bq;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lyads/bq;->a(Lyads/bq;Lyads/n8;Ljava/lang/Object;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
