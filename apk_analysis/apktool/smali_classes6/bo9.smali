.class public final synthetic Lbo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/b42;

.field public final synthetic c:Lyads/e42;


# direct methods
.method public synthetic constructor <init>(Lyads/b42;Lyads/e42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo9;->b:Lyads/b42;

    iput-object p2, p0, Lbo9;->c:Lyads/e42;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbo9;->b:Lyads/b42;

    iget-object p0, p0, Lbo9;->c:Lyads/e42;

    invoke-static {v0, p0}, Lyads/b42;->a(Lyads/b42;Lyads/e42;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
