.class public final Le24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb53$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb53$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb53$b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le24;->a:Lb53$b;

    new-instance v0, Lb53$b;

    invoke-direct {v0, v1}, Lb53$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le24;->b:Lb53$b;

    return-void
.end method
