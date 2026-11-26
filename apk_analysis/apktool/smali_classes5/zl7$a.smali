.class public final Lzl7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ljava/lang/Object;",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public final e:Lpg8;

.field public final f:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Lbm7<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ldm3<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            "Lo22;",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Lzl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzl7<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzl7;Ljava/lang/Object;Ldm3;Ldm3;Ljava/lang/Object;Lpg8;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl7$a;->i:Lzl7;

    iput-object p2, p0, Lzl7$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lzl7$a;->b:Ldm3;

    iput-object p4, p0, Lzl7$a;->c:Ldm3;

    iput-object p5, p0, Lzl7$a;->d:Ljava/lang/Object;

    iput-object p6, p0, Lzl7$a;->e:Lpg8;

    iput-object p7, p0, Lzl7$a;->f:Ldm3;

    const/4 p1, -0x1

    iput p1, p0, Lzl7$a;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lzl7$a;->g:Ljava/lang/Object;

    instance-of v1, v0, Lhl7;

    if-eqz v1, :cond_0

    check-cast v0, Lhl7;

    iget v1, p0, Lzl7$a;->h:I

    iget-object p0, p0, Lzl7$a;->i:Lzl7;

    iget-object p0, p0, Lzl7;->b:Lo22;

    invoke-virtual {v0, v1, p0}, Lhl7;->h(ILo22;)V

    return-void

    :cond_0
    instance-of p0, v0, Lhp2;

    if-eqz p0, :cond_1

    check-cast v0, Lhp2;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lhp2;->dispose()V

    :cond_2
    return-void
.end method
