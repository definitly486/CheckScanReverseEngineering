.class public final Lhe0$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe0;->n1(ILjava/lang/String;)Lhe0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lhe0;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lhe0;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lhe0$e;->f:Lhe0;

    iput-object p2, p0, Lhe0$e;->g:Ljava/lang/String;

    iput p3, p0, Lhe0$e;->h:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhe0$e;->f:Lhe0;

    iget-object v0, v0, Lhe0;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lhe0$e;->g:Ljava/lang/String;

    iget p0, p0, Lhe0$e;->h:I

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
