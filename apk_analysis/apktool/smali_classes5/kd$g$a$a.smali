.class public final Lkd$g$a$a;
.super Lkd$g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$g$a$a;

    const-string v1, "Add_3_checks"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$g$a$a;->e:Lkd$g$a$a;

    return-void
.end method
