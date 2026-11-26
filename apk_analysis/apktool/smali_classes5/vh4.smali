.class public final Lvh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lvh4;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    const-string p0, "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u044fcheckscan://tasks"

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x319fcf23

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const-string p0, "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u044f"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LandingButtonViewModel(title=\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0437\u0430\u0434\u0430\u043d\u0438\u044f, url=checkscan://tasks)"

    return-object p0
.end method
