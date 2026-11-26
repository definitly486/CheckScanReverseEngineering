.class public abstract Lyads/kr5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lyads/gr5;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/gr5;

    iget-object p0, p0, Lyads/gr5;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/fr5;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/fr5;

    iget-wide v0, p0, Lyads/fr5;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/br5;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/br5;

    iget-boolean p0, p0, Lyads/br5;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lyads/er5;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/er5;

    iget-wide v0, p0, Lyads/er5;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lyads/cr5;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/cr5;

    iget p0, p0, Lyads/cr5;->b:I

    new-instance v0, Lyads/l20;

    invoke-direct {v0, p0}, Lyads/l20;-><init>(I)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lyads/jr5;

    if-eqz v0, :cond_5

    check-cast p0, Lyads/jr5;

    iget-object p0, p0, Lyads/jr5;->b:Ljava/lang/String;

    new-instance v0, Lyads/q46;

    invoke-direct {v0, p0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Lyads/ar5;

    if-eqz v0, :cond_6

    check-cast p0, Lyads/ar5;

    iget-object p0, p0, Lyads/ar5;->b:Lorg/json/JSONArray;

    return-object p0

    :cond_6
    instance-of v0, p0, Lyads/dr5;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/dr5;

    iget-object p0, p0, Lyads/dr5;->b:Lorg/json/JSONObject;

    return-object p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
