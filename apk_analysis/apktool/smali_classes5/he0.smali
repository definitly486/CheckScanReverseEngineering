.class public Lhe0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhe0;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final m1(Ljava/lang/String;Z)Lhe0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lhe0$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhe0$a;

    new-instance v1, Lhe0$b;

    invoke-direct {v1, p0, p1}, Lhe0$b;-><init>(Lhe0;Ljava/lang/String;)V

    new-instance v2, Lhe0$c;

    invoke-direct {v2, p0, p1, p2}, Lhe0$c;-><init>(Lhe0;Ljava/lang/String;Z)V

    invoke-direct {v0, v1, v2}, Lhe0$a;-><init>(Lnl3;Lll3;)V

    return-object v0
.end method

.method public final n1(ILjava/lang/String;)Lhe0$a;
    .locals 3

    new-instance v0, Lhe0$a;

    new-instance v1, Lhe0$d;

    invoke-direct {v1, p0, p2}, Lhe0$d;-><init>(Lhe0;Ljava/lang/String;)V

    new-instance v2, Lhe0$e;

    invoke-direct {v2, p0, p2, p1}, Lhe0$e;-><init>(Lhe0;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lhe0$a;-><init>(Lnl3;Lll3;)V

    return-object v0
.end method

.method public final o1(JLjava/lang/String;)Lhe0$a;
    .locals 3

    new-instance v0, Lhe0$a;

    new-instance v1, Lhe0$f;

    invoke-direct {v1, p0, p3}, Lhe0$f;-><init>(Lhe0;Ljava/lang/String;)V

    new-instance v2, Lhe0$g;

    invoke-direct {v2, p0, p3, p1, p2}, Lhe0$g;-><init>(Lhe0;Ljava/lang/String;J)V

    invoke-direct {v0, v1, v2}, Lhe0$a;-><init>(Lnl3;Lll3;)V

    return-object v0
.end method

.method public final p1(Ljava/lang/String;Ljava/lang/String;)Lhe0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lhe0$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhe0$a;

    new-instance v1, Lhe0$h;

    invoke-direct {v1, p0, p1}, Lhe0$h;-><init>(Lhe0;Ljava/lang/String;)V

    new-instance v2, Lhe0$i;

    invoke-direct {v2, p0, p1, p2}, Lhe0$i;-><init>(Lhe0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lhe0$a;-><init>(Lnl3;Lll3;)V

    return-object v0
.end method
