.class public final Loq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loq1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-",
            "Lcp2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lh6;

.field public final f:Lh6;

.field public final g:Lrm3$d;

.field public final h:Lrm3$d;


# direct methods
.method public constructor <init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Loq1;->b:Lqp1;

    iput-object p2, p0, Loq1;->c:Lqx1;

    iput-object p3, p0, Loq1;->d:Lqx1;

    iput-object p4, p0, Loq1;->e:Lh6;

    iput-object p5, p0, Loq1;->f:Lh6;

    sget-object p1, Lrm3;->c:Lrm3$d;

    iput-object p1, p0, Loq1;->g:Lrm3$d;

    iput-object p1, p0, Loq1;->h:Lrm3$d;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Loq1$a;

    invoke-direct {v0, p0, p1}, Loq1$a;-><init>(Loq1;Lmq1;)V

    iget-object p0, p0, Loq1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
