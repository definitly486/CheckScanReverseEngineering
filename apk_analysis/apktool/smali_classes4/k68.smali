.class public final Lk68;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk68$b;,
        Lk68$a;
    }
.end annotation


# instance fields
.field public final a:Ly91;

.field public final b:Z

.field public final c:Lk68$b;

.field public final d:I


# direct methods
.method public constructor <init>(Lk68$b;ZLy91;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk68;->c:Lk68$b;

    iput-boolean p2, p0, Lk68;->b:Z

    iput-object p3, p0, Lk68;->a:Ly91;

    iput p4, p0, Lk68;->d:I

    return-void
.end method

.method public static a(C)Lk68;
    .locals 4

    new-instance v0, Ly91$f;

    invoke-direct {v0, p0}, Ly91$f;-><init>(C)V

    new-instance p0, Lk68;

    new-instance v1, Lj7;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lj7;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Ly91$m;->c:Ly91$m;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v0, v2}, Lk68;-><init>(Lk68$b;ZLy91;I)V

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lk68;->c:Lk68$b;

    invoke-interface {v0, p0, p1}, Lk68$b;->a(Lk68;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v0, p0

    check-cast v0, Lp0;

    invoke-virtual {v0}, Lp0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
