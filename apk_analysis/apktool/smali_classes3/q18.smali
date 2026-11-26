.class public final Lq18;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp18;

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp18;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq18;->a:Lp18;

    new-instance v0, Lb53$b;

    sget-object v1, Lj59;->a:Lj59;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lq18;->b:Lb53$b;

    return-void
.end method
