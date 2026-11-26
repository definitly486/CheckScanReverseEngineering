.class public final Ld82$c;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld82;-><init>(Lap8;Ljf6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ld82;


# direct methods
.method public constructor <init>(Ld82;)V
    .locals 0

    iput-object p1, p0, Ld82$c;->c:Ld82;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Ld82$c;->c:Ld82;

    iget-object p0, p0, Ld82;->g:Lz68;

    :cond_0
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Li57;

    new-instance v0, Li57$a;

    invoke-direct {v0, p2}, Li57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void
.end method
