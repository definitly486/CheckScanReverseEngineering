.class public final Lyads/pl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ab6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/t96;Lyads/p90;Lyads/zz3;Lyads/ib6;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lyads/aw4;
    .locals 0

    iget-object p0, p3, Lyads/zz3;->a:Ljava/lang/String;

    iget p1, p3, Lyads/zz3;->h:I

    iget p2, p3, Lyads/zz3;->g:I

    new-instance p3, Lyads/ol4;

    invoke-direct {p3, p1, p2, p0}, Lyads/ol4;-><init>(IILjava/lang/String;)V

    return-object p3
.end method
