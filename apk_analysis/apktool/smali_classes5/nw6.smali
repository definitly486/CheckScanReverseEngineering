.class public abstract Lnw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnw6$b;,
        Lnw6$a;
    }
.end annotation


# direct methods
.method public static d(Ljava/lang/StringBuilder;)Lnw6;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lnw6$b;

    invoke-direct {v0, p0}, Lnw6$b;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0

    :cond_0
    new-instance v0, Lnw6$a;

    invoke-direct {v0, p0}, Lnw6$a;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(C)Lnw6;
.end method

.method public abstract b(Ljava/lang/String;)Lnw6;
.end method

.method public abstract c([CI)Lnw6;
.end method
