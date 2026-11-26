.class public final Lgw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lgw4;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgw4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgw4;->a:Lgw4;

    new-instance v0, Lfg6;

    const-string v1, "kotlin.Long"

    sget-object v2, Ldg6$g;->a:Ldg6$g;

    invoke-direct {v0, v1, v2}, Lfg6;-><init>(Ljava/lang/String;Ldg6;)V

    sput-object v0, Lgw4;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lud2;->decodeLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lgw4;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lux2;->encodeLong(J)V

    return-void
.end method
