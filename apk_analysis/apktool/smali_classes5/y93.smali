.class public final Ly93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly93$a;,
        Ly93$b;,
        Ly93$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzo7<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lba3;


# direct methods
.method public constructor <init>(Ljava/io/File;Lba3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly93;->a:Ljava/io/File;

    iput-object p2, p0, Ly93;->b:Lba3;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ly93$b;

    invoke-direct {v0, p0}, Ly93$b;-><init>(Ly93;)V

    return-object v0
.end method
