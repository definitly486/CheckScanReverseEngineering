.class public final Ldr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr6;->a:Ljava/lang/String;

    iput-object p2, p0, Ldr6;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0x3f

    iget-object v0, p0, Ldr6;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ldr6;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldr6;->a:Ljava/lang/String;

    return-object p0
.end method
