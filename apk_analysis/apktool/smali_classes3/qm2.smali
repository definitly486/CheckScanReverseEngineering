.class public final synthetic Lqm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/profileinstaller/DeviceProfileWriter;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm2;->b:Landroidx/profileinstaller/DeviceProfileWriter;

    iput p2, p0, Lqm2;->c:I

    iput-object p3, p0, Lqm2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lqm2;->c:I

    iget-object v1, p0, Lqm2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lqm2;->b:Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-static {p0, v0, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    return-void
.end method
