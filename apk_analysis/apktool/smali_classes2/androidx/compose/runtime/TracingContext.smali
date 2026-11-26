.class public abstract Landroidx/compose/runtime/TracingContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$a;
.implements Lit8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/TracingContext$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo22$a;",
        "Lit8<",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Key:Landroidx/compose/runtime/TracingContext$Key;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/TracingContext$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/TracingContext$Key;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/runtime/TracingContext;->Key:Landroidx/compose/runtime/TracingContext$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/TracingContext;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo22$a$a;->a(Lo22$a;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/runtime/TracingContext;->Key:Landroidx/compose/runtime/TracingContext$Key;

    return-object p0
.end method

.method public bridge minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public bridge plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public restoreThreadContext(Lo22;Lj59;)V
    .locals 0

    sget-object p0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic restoreThreadContext(Lo22;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lj59;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/TracingContext;->restoreThreadContext(Lo22;Lj59;)V

    return-void
.end method

.method public bridge synthetic updateThreadContext(Lo22;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/TracingContext;->updateThreadContext(Lo22;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public updateThreadContext(Lo22;)V
    .locals 0

    sget-object p1, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    iget-object p0, p0, Landroidx/compose/runtime/TracingContext;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
