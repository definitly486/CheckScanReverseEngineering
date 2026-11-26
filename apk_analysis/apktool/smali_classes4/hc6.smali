.class public final enum Lhc6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhc6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lhc6;

.field public static final Companion:Lhc6$a;

.field public static final enum DEBUG:Lhc6;

.field public static final enum ERROR:Lhc6;

.field public static final enum FATAL:Lhc6;

.field public static final enum INFO:Lhc6;

.field public static final enum TRACE:Lhc6;

.field public static final enum WARN:Lhc6;


# instance fields
.field private final severityNumber:I

.field private final severityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lhc6;

    const-string v1, "trace"

    const-string v2, "TRACE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lhc6;->TRACE:Lhc6;

    new-instance v1, Lhc6;

    const-string v2, "debug"

    const-string v3, "DEBUG"

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5, v2}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lhc6;->DEBUG:Lhc6;

    new-instance v2, Lhc6;

    const/16 v3, 0x9

    const-string v4, "info"

    const-string v6, "INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v4}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lhc6;->INFO:Lhc6;

    new-instance v3, Lhc6;

    const/16 v4, 0xd

    const-string v6, "warn"

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v4, v6}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lhc6;->WARN:Lhc6;

    new-instance v4, Lhc6;

    const/16 v6, 0x11

    const-string v7, "error"

    const-string v8, "ERROR"

    const/4 v9, 0x4

    invoke-direct {v4, v8, v9, v6, v7}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lhc6;->ERROR:Lhc6;

    move v6, v5

    new-instance v5, Lhc6;

    const/16 v7, 0x15

    const-string v8, "fatal"

    const-string v9, "FATAL"

    invoke-direct {v5, v9, v6, v7, v8}, Lhc6;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lhc6;->FATAL:Lhc6;

    filled-new-array/range {v0 .. v5}, [Lhc6;

    move-result-object v0

    sput-object v0, Lhc6;->$VALUES:[Lhc6;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lhc6;->$ENTRIES:Lg03;

    new-instance v0, Lhc6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhc6;->Companion:Lhc6$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lhc6;->severityNumber:I

    iput-object p4, p0, Lhc6;->severityText:Ljava/lang/String;

    return-void
.end method

.method public static a()Lg03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg03<",
            "Lhc6;",
            ">;"
        }
    .end annotation

    sget-object v0, Lhc6;->$ENTRIES:Lg03;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lhc6;
    .locals 1

    const-class v0, Lhc6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhc6;

    return-object p0
.end method

.method public static values()[Lhc6;
    .locals 1

    sget-object v0, Lhc6;->$VALUES:[Lhc6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhc6;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, Lhc6;->severityNumber:I

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhc6;->severityText:Ljava/lang/String;

    return-object p0
.end method
