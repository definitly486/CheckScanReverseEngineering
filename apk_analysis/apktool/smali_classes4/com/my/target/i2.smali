.class public final Lcom/my/target/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/i2$a;
    }
.end annotation


# virtual methods
.method public final a()Lcom/my/target/b2$a;
    .locals 0

    new-instance p0, Lcom/my/target/i2$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJLi7a;Z)V
    .locals 0

    .line 6
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    .line 3
    return-void
.end method
