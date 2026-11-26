.class public abstract Lij3$a;
.super Lij3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lij3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lij3<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ll0;


# direct methods
.method public constructor <init>(Ll0;)V
    .locals 0

    invoke-direct {p0}, Loj3;-><init>()V

    iput-object p1, p0, Lij3$a;->b:Ll0;

    return-void
.end method


# virtual methods
.method public final delegate()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lij3$a;->b:Ll0;

    return-object p0
.end method
