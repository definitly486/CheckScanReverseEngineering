.class public final Lgd4;
.super Lpd4;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
    with = Lid4;
.end annotation


# static fields
.field public static final INSTANCE:Lgd4;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgd4;

    invoke-direct {v0}, Lgd4;-><init>()V

    sput-object v0, Lgd4;->INSTANCE:Lgd4;

    const-string v0, "null"

    sput-object v0, Lgd4;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpd4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lgd4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final serializer()Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lgd4;",
            ">;"
        }
    .end annotation

    sget-object p0, Lid4;->a:Lid4;

    return-object p0
.end method
