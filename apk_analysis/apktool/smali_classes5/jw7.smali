.class public final Ljw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljw7;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljw7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljw7;->a:Ljw7;

    new-instance v0, Lfg6;

    const-string v1, "kotlin.Short"

    sget-object v2, Ldg6$h;->a:Ldg6$h;

    invoke-direct {v0, v1, v2}, Lfg6;-><init>(Ljava/lang/String;Ldg6;)V

    sput-object v0, Ljw7;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lud2;->decodeShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Ljw7;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-interface {p1, p0}, Lux2;->encodeShort(S)V

    return-void
.end method
