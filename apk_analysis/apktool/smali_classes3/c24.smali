.class public final Lc24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lpm5;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Lum5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb53$b;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc24;->a:Lb53$b;

    new-instance v0, Lb53$b;

    sget-object v1, Lpm5;->b:Lpm5;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc24;->b:Lb53$b;

    new-instance v0, Lb53$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc24;->c:Lb53$b;

    return-void
.end method
