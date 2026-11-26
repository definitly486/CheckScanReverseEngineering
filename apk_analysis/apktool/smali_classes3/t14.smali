.class public final Lt14;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lk23;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb53$b;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt14;->a:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Lk23;->a:Lj23;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt14;->b:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt14;->c:Lb53$b;

    new-instance v0, Lb53$b;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt14;->d:Lb53$b;

    return-void
.end method
