.class public final Lyads/zp6;
.super Lyads/mp6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/lp6;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/mp6;-><init>(Lyads/lp6;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/mp6;->b:Lyads/lp6;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/lp6;->a:Lorg/json/JSONObject;

    return-object p1
.end method
