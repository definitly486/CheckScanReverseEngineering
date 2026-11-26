.class public final Lqg4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqg4;->a(Lfy0;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsy0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg4$b;->a:Lc31;

    return-void
.end method


# virtual methods
.method public final a(Lfy0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk57$a;

    invoke-direct {p1, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqg4$b;->a:Lc31;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lfy0;La57;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "La57<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p2, La57;->a:Lz47;

    invoke-virtual {v0}, Lz47;->o()Z

    move-result v0

    iget-object p0, p0, Lqg4$b;->a:Lc31;

    if-eqz v0, :cond_1

    iget-object p2, p2, La57;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lfy0;->m()Lb37;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lb37;->e:Ljava/util/Map;

    const-class p2, Lga4;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lga4;

    iget-object p2, p1, Lga4;->a:Ljava/lang/Class;

    iget-object p1, p1, Lga4;->c:Ljava/lang/reflect/Method;

    new-instance v0, Lkotlin/KotlinNullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lk57$a;

    invoke-direct {p1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(La57;)V

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
