.class public final Lpb9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llb9;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Lpb9;->a:Lfh8;

    return-void
.end method
