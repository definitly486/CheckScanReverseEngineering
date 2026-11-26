.class public final Lhq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfq7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq7<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfq7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lk36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk36<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lk36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk36<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsy2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lsy2;-><init>(I)V

    sget-boolean v1, Lcy0;->a:Z

    if-eqz v1, :cond_0

    new-instance v2, Lbl1;

    invoke-direct {v2, v0}, Lbl1;-><init>(Lnl3;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lav1;

    invoke-direct {v2, v0}, Lav1;-><init>(Lnl3;)V

    :goto_0
    sput-object v2, Lhq7;->a:Lfq7;

    new-instance v0, Lty2;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lty2;-><init>(I)V

    if-eqz v1, :cond_1

    new-instance v2, Lbl1;

    invoke-direct {v2, v0}, Lbl1;-><init>(Lnl3;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lav1;

    invoke-direct {v2, v0}, Lav1;-><init>(Lnl3;)V

    :goto_1
    sput-object v2, Lhq7;->b:Lfq7;

    new-instance v0, Lzc7;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lzc7;-><init>(I)V

    if-eqz v1, :cond_2

    new-instance v2, Lcl1;

    invoke-direct {v2, v0}, Lcl1;-><init>(Lbm3;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lbv1;

    invoke-direct {v2, v0}, Lbv1;-><init>(Lbm3;)V

    :goto_2
    sput-object v2, Lhq7;->c:Lk36;

    new-instance v0, Lgq7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v1, :cond_3

    new-instance v1, Lcl1;

    invoke-direct {v1, v0}, Lcl1;-><init>(Lbm3;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lbv1;

    invoke-direct {v1, v0}, Lbv1;-><init>(Lbm3;)V

    :goto_3
    sput-object v1, Lhq7;->d:Lk36;

    return-void
.end method
