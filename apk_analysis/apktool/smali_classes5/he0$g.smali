.class public final Lhe0$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe0;->o1(JLjava/lang/String;)Lhe0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lhe0;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Lhe0;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lhe0$g;->f:Lhe0;

    iput-object p2, p0, Lhe0$g;->g:Ljava/lang/String;

    iput-wide p3, p0, Lhe0$g;->h:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lhe0$g;->f:Lhe0;

    iget-object v0, v0, Lhe0;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lhe0$g;->g:Ljava/lang/String;

    iget-wide v2, p0, Lhe0$g;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
