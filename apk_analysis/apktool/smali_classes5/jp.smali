.class public final Ljp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin3;


# virtual methods
.method public final a()V
    .locals 2

    new-instance p0, Lkd$r$a;

    const-string v0, "Button Play"

    const-string v1, "Games"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v1, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method
