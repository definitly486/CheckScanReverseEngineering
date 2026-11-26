.class public final enum Lgr1$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgr1$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgr1$a;

.field public static final enum EVENT_OVERRIDE:Lgr1$a;

.field public static final enum NOT_SET:Lgr1$a;

.field private static final valueMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lgr1$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgr1$a;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgr1$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgr1$a;->NOT_SET:Lgr1$a;

    new-instance v1, Lgr1$a;

    const-string v3, "EVENT_OVERRIDE"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lgr1$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgr1$a;->EVENT_OVERRIDE:Lgr1$a;

    filled-new-array {v0, v1}, [Lgr1$a;

    move-result-object v3

    sput-object v3, Lgr1$a;->$VALUES:[Lgr1$a;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lgr1$a;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgr1$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgr1$a;
    .locals 1

    const-class v0, Lgr1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgr1$a;

    return-object p0
.end method

.method public static values()[Lgr1$a;
    .locals 1

    sget-object v0, Lgr1$a;->$VALUES:[Lgr1$a;

    invoke-virtual {v0}, [Lgr1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgr1$a;

    return-object v0
.end method
