.class public abstract enum Lfw4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfw4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfw4;

.field public static final enum DEFAULT:Lfw4;

.field public static final enum STRING:Lfw4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfw4$a;

    invoke-direct {v0}, Lfw4$a;-><init>()V

    sput-object v0, Lfw4;->DEFAULT:Lfw4;

    new-instance v1, Lfw4$b;

    invoke-direct {v1}, Lfw4$b;-><init>()V

    sput-object v1, Lfw4;->STRING:Lfw4;

    const/4 v2, 0x2

    new-array v2, v2, [Lfw4;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lfw4;->$VALUES:[Lfw4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfw4;
    .locals 1

    const-class v0, Lfw4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfw4;

    return-object p0
.end method

.method public static values()[Lfw4;
    .locals 1

    sget-object v0, Lfw4;->$VALUES:[Lfw4;

    invoke-virtual {v0}, [Lfw4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfw4;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end method
