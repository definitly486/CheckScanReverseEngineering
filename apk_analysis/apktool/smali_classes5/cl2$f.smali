.class public final Lcl2$f;
.super Ljz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final d:Lrl1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final e:Lh88;


# direct methods
.method public constructor <init>(Lcl2;Lrl1$a;Lh88;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lh88;",
            ")V"
        }
    .end annotation

    iget-object p1, p1, Lcl2;->d:Lky1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljz1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcl2$f;->d:Lrl1$a;

    iput-object p3, p0, Lcl2$f;->e:Lh88;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    iget-object v1, p0, Lcl2$f;->d:Lrl1$a;

    iget-object p0, p0, Lcl2$f;->e:Lh88;

    invoke-virtual {v1, p0, v0}, Lrl1$a;->a(Lh88;Lla5;)V

    return-void
.end method
