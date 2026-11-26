.class public final Lz49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lv49;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz49;

.field public static final b:Li54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz49;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz49;->a:Lz49;

    const-string v0, "kotlin.UShort"

    sget-object v1, Ljw7;->a:Ljw7;

    invoke-static {v0, v1}, Lk54;->a(Ljava/lang/String;Ldf4;)Li54;

    move-result-object v0

    sput-object v0, Lz49;->b:Li54;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lz49;->b:Li54;

    invoke-interface {p1, p0}, Lud2;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    invoke-interface {p0}, Lud2;->decodeShort()S

    move-result p0

    new-instance p1, Lv49;

    invoke-direct {p1, p0}, Lv49;-><init>(S)V

    return-object p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lz49;->b:Li54;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lv49;

    iget-short p0, p2, Lv49;->b:S

    sget-object p2, Lz49;->b:Li54;

    invoke-interface {p1, p2}, Lux2;->encodeInline(Lmp7;)Lux2;

    move-result-object p1

    invoke-interface {p1, p0}, Lux2;->encodeShort(S)V

    return-void
.end method
