.class public final enum Ldm9$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldm9$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldm9$c;

.field public static final enum YUV_I420:Ldm9$c;

.field public static final enum YUV_NV21:Ldm9$c;


# instance fields
.field private final format:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldm9$c;

    const/4 v1, 0x0

    const/16 v2, 0x11

    const-string v3, "YUV_NV21"

    invoke-direct {v0, v3, v1, v2}, Ldm9$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldm9$c;->YUV_NV21:Ldm9$c;

    new-instance v1, Ldm9$c;

    const/4 v2, 0x1

    const/16 v3, 0x23

    const-string v4, "YUV_I420"

    invoke-direct {v1, v4, v2, v3}, Ldm9$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldm9$c;->YUV_I420:Ldm9$c;

    filled-new-array {v0, v1}, [Ldm9$c;

    move-result-object v0

    sput-object v0, Ldm9$c;->$VALUES:[Ldm9$c;

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

    iput p3, p0, Ldm9$c;->format:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldm9$c;
    .locals 1

    const-class v0, Ldm9$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldm9$c;

    return-object p0
.end method

.method public static values()[Ldm9$c;
    .locals 1

    sget-object v0, Ldm9$c;->$VALUES:[Ldm9$c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm9$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ldm9$c;->format:I

    return p0
.end method
