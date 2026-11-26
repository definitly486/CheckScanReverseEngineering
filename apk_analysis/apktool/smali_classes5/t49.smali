.class public final Lt49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lp49;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt49;

.field public static final b:Li54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt49;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt49;->a:Lt49;

    const-string v0, "kotlin.ULong"

    sget-object v1, Lgw4;->a:Lgw4;

    invoke-static {v0, v1}, Lk54;->a(Ljava/lang/String;Ldf4;)Li54;

    move-result-object v0

    sput-object v0, Lt49;->b:Li54;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lt49;->b:Li54;

    invoke-interface {p1, p0}, Lud2;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    invoke-interface {p0}, Lud2;->decodeLong()J

    move-result-wide p0

    new-instance v0, Lp49;

    invoke-direct {v0, p0, p1}, Lp49;-><init>(J)V

    return-object v0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lt49;->b:Li54;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lp49;

    iget-wide v0, p2, Lp49;->b:J

    sget-object p0, Lt49;->b:Li54;

    invoke-interface {p1, p0}, Lux2;->encodeInline(Lmp7;)Lux2;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lux2;->encodeLong(J)V

    return-void
.end method
