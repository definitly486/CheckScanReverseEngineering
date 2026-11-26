.class public final Lau4$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lau4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lvt4;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lau4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lau4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lau4$a;->f:Lau4$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lzt4;->f:Lzt4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvt4$a;

    new-instance v1, Lnq;

    invoke-direct {v1}, Lnq;-><init>()V

    invoke-direct {v0, v1}, Lvt4$a;-><init>(Lnq;)V

    invoke-virtual {p0, v0}, Lzt4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lvt4;

    invoke-static {v0}, Le0$a;->c(Le0;)Lyx0;

    move-result-object v0

    invoke-direct {p0, v0}, Lvt4;-><init>(Lyx0;)V

    return-object p0
.end method
