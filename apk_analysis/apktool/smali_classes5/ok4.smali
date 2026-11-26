.class public final Lok4;
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
    instance-of p0, p1, Lok4;

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

    const-string p0, "\u0421\u0442\u0430\u043d\u044c\u0442\u0435\nPRO\u0444\u0435\u0441\u0441\u0438\u043e\u043d\u0430\u043b\u044c\u043d\u044b\u043c\n\u0427\u0435\u043a\u0421\u043a\u0430\u043d\u0435\u0440\u043e\u043c:"

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x73e234aa

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    const-string p0, "\u0421\u0442\u0430\u043d\u044c\u0442\u0435\nPRO\u0444\u0435\u0441\u0441\u0438\u043e\u043d\u0430\u043b\u044c\u043d\u044b\u043c\n\u0427\u0435\u043a\u0421\u043a\u0430\u043d\u0435\u0440\u043e\u043c:"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LandingTitleViewModel(title=\u0421\u0442\u0430\u043d\u044c\u0442\u0435\nPRO\u0444\u0435\u0441\u0441\u0438\u043e\u043d\u0430\u043b\u044c\u043d\u044b\u043c\n\u0427\u0435\u043a\u0421\u043a\u0430\u043d\u0435\u0440\u043e\u043c:)"

    return-object p0
.end method
